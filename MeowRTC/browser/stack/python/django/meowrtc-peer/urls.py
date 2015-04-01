from django.conf.urls import patterns, include, url
from django.views.generic import TemplateView

urlpatterns = patterns('',
	url(r'offer/', 'start_peer.views.offer', name='offer'),
	url(r'answer/', 'start_peer.views.answer', name='answer'),
	url(r'candidate/', 'start_peer.views.candidate', name='candidate'),
)
