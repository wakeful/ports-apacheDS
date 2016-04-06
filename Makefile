# Created by: Adrian Jaskuła <aj@laatu.uk>
# $FreeBSD$

PORTNAME=	apacheds
PORTVERSION=	2.0.0
CATEGORIES=	java databases
MASTER_SITES=	http://mirror.ox.ac.uk/sites/rsync.apache.org/directory/apacheds/dist/2.0.0-M21/
DISTNAME=	${PORTNAME}-${PORTVERSION}-M21

MAINTAINER=	aj@laatu.uk
COMMENT=	Apache Directory - LDAP and Kerberos server written in Java

LICENSE=	APACHE20

RUN_DEPENDS=	bash:${PORTSDIR}/shells/bash

USE_JAVA=	yes
JAVA_VERSION=	1.7+

NO_ARCH=	yes
NO_BUILD=	yes
NO_TEST=	yes

USES=	shebangfix
SHEBANG_FILES=	bin/apacheds.sh

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/${PORTNAME}
	cd ${WRKSRC}; ${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/${PORTNAME}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/apacheds.sh ${STAGEDIR}${PREFIX}/bin$

.include <bsd.port.mk>
