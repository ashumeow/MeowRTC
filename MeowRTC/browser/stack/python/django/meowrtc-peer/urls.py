from django.conf.urls import patterns, include, url
from django.views.generic import TemplateView

urlpatterns = patterns('',
	url(r'offer/', 'meowrtc_peer.views.offer', name='offer'),
	url(r'answer/', 'meowrtc_peer.views.answer', name='answer'),
	url(r'candidate/', 'meowrtc_peer.views.candidate', name='candidate'),
)
