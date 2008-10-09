use ExtUtils::MakeMaker;
# $Id: Makefile.PL,v 1.2 2006/01/24 17:45:08 mrodrigu Exp $
WriteMakefile(
    NAME              => 'Tree::DAG_Node::XPath',
    VERSION_FROM      => 'lib/Tree/DAG_Node/XPath.pm', # finds $VERSION
    PREREQ_PM         => { 'Tree::XPathEngine'  => '0.05',
				                   'Tree::DAG_Node' => '1.04',
		                     }, 
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Tree/DAG_Node/XPath.pm', # retrieve abstract from module
       AUTHOR         => 'Michel Rodriguez <mirod@cpan.org>') : ()),
);
# add the license bit in META.yaml
unless( `$^X -n -e'print if( m{license\s*:\s*perl})' Makefile`)
  { system $^X . q{ -p -i -e's{^((.*)distribution_type: module(.*))}{$1\n$2license: perl$3}m' Makefile}; }
