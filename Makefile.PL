use 5.008004;
use ExtUtils::MakeMaker;
# $Id: Makefile.PL,v 1.2 2006/01/24 17:45:08 mrodrigu Exp $
WriteMakefile(
    NAME              => 'Tree::DAG_Node::XPath',
    VERSION_FROM      => 'lib/Tree/DAG_Node/XPath.pm', # finds $VERSION
    PREREQ_PM         => { 'Tree::XPathEngine'  => '0.01',
				                   'Tree::DAG_Node' => '1.04',
		                     }, 
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Tree/DAG_Node/XPath.pm', # retrieve abstract from module
       AUTHOR         => 'Michel Rodriguez <mirod@cpan.org>') : ()),
);
