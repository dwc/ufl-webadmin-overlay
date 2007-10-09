# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst application for the University of Florida Approval Tracking System"
HOMEPAGE="http://approval.ufl.edu/"
SRC_URI="http://dev.webadmin.ufl.edu/distfiles/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	>=dev-perl/Catalyst-Runtime-5.7006
	dev-perl/Catalyst-Action-RenderView
	dev-perl/Catalyst-Model-DBIC-Schema
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/Catalyst-Plugin-Authentication-Store-DBIC
	dev-perl/Catalyst-Plugin-Authorization-ACL
	dev-perl/Catalyst-Plugin-Authorization-Roles
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-FillInForm
	dev-perl/Catalyst-Plugin-Setenv
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-Plugin-Static-Simple
	dev-perl/Catalyst-Plugin-Unicode-Encoding
	>=dev-perl/Catalyst-View-Email-0.02
	dev-perl/Catalyst-View-JSON
	dev-perl/Catalyst-View-TT
	dev-perl/Class-Accessor
	dev-perl/Class-C3
	dev-perl/DateTime-Format-DB2
	dev-perl/DBD-DB2
	dev-perl/DBIx-Class
	virtual/perl-Digest-MD5
	dev-perl/FormValidator-Simple
	dev-perl/FormValidator-Simple-ProfileManager-YAML
	dev-perl/UNIVERSAL-require
	dev-perl/Module-Find
	virtual/perl-Scalar-List-Utils
	dev-perl/Template-Plugin-Textile
	dev-perl/yaml"
DEPEND="${RDEPEND}
	test? (
		dev-perl/DBD-SQLite
		virtual/perl-Test-Simple
	)"
