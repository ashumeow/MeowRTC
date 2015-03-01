import 'dart:html';

void main() {
  VideoElement pc1Video = querySelector("#pc1_video");
  VideoElement pc2Video = querySelector("#pc2_video");

  RtcPeerConnection pc1 = new RtcPeerConnection(null);
  RtcPeerConnection pc2 = new RtcPeerConnection(null);

  // Fires when user 2 calls addStream
  pc1.onAddStream.listen((MediaStreamEvent e) {
    String url = Url.createObjectUrl(e.stream);
    pc1Video.src = url;
  });

  // Fires when user 1 calls addStream
  pc2.onAddStream.listen((MediaStreamEvent e) {
    String url = Url.createObjectUrl(e.stream);
    pc2Video.src = url;
  });

  // Ice candidate from user 2, null if ice candidate generation has ended
  pc1.onIceCandidate.listen((RtcIceCandidateEvent e) {
    if (e.candidate != null)
      pc2.addIceCandidate(e.candidate);
  });

  // Ice candidate from user 1, null if ice candidate generation has ended
  pc2.onIceCandidate.listen((RtcIceCandidateEvent e) {
    if (e.candidate != null)
      pc1.addIceCandidate(e.candidate);
  });

  pc1.onNegotiationNeeded.listen((Event e) {
    pc1.createOffer().then((RtcSessionDescription sdp) {
      pc1.setLocalDescription(sdp);
      pc2.setRemoteDescription(sdp);
      pc2.createAnswer().then((RtcSessionDescription sdp2) {
        pc2.setLocalDescription(sdp2);
        pc1.setRemoteDescription(sdp2);
      });
    });
  });

  if (MediaStream.supported) {
    window.navigator.getUserMedia(audio: true, video: true).then((MediaStream stream) {
      // Copy the stream into a new MediaStream variable
      MediaStream remoteStream = new MediaStream(stream);

      // Fires onAddStream on user 2
      pc1.addStream(stream);

      // Fires onAddStream on user 1
      pc2.addStream(remoteStream);
    });
  }
}
