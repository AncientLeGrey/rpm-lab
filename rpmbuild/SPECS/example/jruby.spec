Summary: Ruby Interpreter in Java
Name: jruby
Version: 1.5.6
Release: 2
License: LGPL
Group: Language
URL: http://jruby.org
Source: http://jruby.org.s3.amazonaws.com/downloads/1.5.6/jruby-bin-1.5.6.tar.gz
Distribution: Centos 5
Packager: https://github.com/AncientLeGrey
Vendor: Engineyard
BuildArch: noarch
BuildRoot: %{_topdir}/tmp

Requires: java

%description
100% Pure-Java Implementation of the Ruby Programming Language

%prep
%setup

%install
mkdir -p %{buildroot}/var/lib/%{name}
cp -R . %{buildroot}/var/lib/%{name}

%clean
rm -Rf %{buildroot}

%pre
/usr/sbin/useradd %{name}

%post
echo 'export JRUBY_HOME=/var/lib/%{name}' >> ~%{name}/.bash_profile
echo 'export PATH=$JRUBY_HOME/bin:$PATH'  >> ~%{name}/.bash_profile

%preun

%postun
userdel -r %{name}

%files 
%defattr(-,jruby,jruby)
/var/lib/jruby
