import os
from setuptools import setup
setup(
    name='meowrtc_peer',
    version='',
    url='https://github.com/ashumeow/MeowRTC',
    license='The MIT License (MIT)',

    author='ashumeow',
    author_email='ashumeow@live.com',

    packages=['meowrtc_peer'],
    include_package_data=True,
    zip_safe=False,

    install_requires=['django-etc'],

    classifiers=[
        'Operating System :: OS Independent',
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 2.7',
        'License :: OSI Approved :: MIT License',
        'Topic :: Communications',
        'Topic :: Communications :: File Sharing',
        'Framework :: Django',
    ],
)
