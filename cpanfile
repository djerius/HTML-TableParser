requires "HTML::Entities" => "0";
requires "HTML::Parser" => "3.26";

on 'test' => sub {
  requires "ExtUtils::MakeMaker" => "0";
  requires "File::Spec" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "Test::More" => "0.32";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "2.120900";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
};

on 'develop' => sub {
  requires "Dist::Zilla" => "5";
  requires "Dist::Zilla::Plugin::AutoMetaResources" => "0";
  requires "Dist::Zilla::Plugin::BumpVersionAfterRelease" => "0";
  requires "Dist::Zilla::Plugin::CPANFile" => "0";
  requires "Dist::Zilla::Plugin::CheckMetaResources" => "0";
  requires "Dist::Zilla::Plugin::CopyFilesFromRelease" => "0";
  requires "Dist::Zilla::Plugin::Encoding" => "0";
  requires "Dist::Zilla::Plugin::EnsureChangesHasContent" => "0";
  requires "Dist::Zilla::Plugin::EnsurePrereqsInstalled" => "0";
  requires "Dist::Zilla::Plugin::GatherDir" => "0";
  requires "Dist::Zilla::Plugin::InsertCopyright" => "0";
  requires "Dist::Zilla::Plugin::InsertExample" => "0";
  requires "Dist::Zilla::Plugin::MetaJSON" => "0";
  requires "Dist::Zilla::Plugin::MetaNoIndex" => "0";
  requires "Dist::Zilla::Plugin::MetaProvides::Package" => "0";
  requires "Dist::Zilla::Plugin::NextRelease" => "0";
  requires "Dist::Zilla::Plugin::PodCoverageTests" => "0";
  requires "Dist::Zilla::Plugin::PodSyntaxTests" => "0";
  requires "Dist::Zilla::Plugin::PodWeaver" => "0";
  requires "Dist::Zilla::Plugin::Prereqs" => "0";
  requires "Dist::Zilla::Plugin::Prereqs::AuthorDeps" => "0";
  requires "Dist::Zilla::Plugin::Readme::Brief" => "0";
  requires "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0";
  requires "Dist::Zilla::Plugin::Regenerate" => "0";
  requires "Dist::Zilla::Plugin::RewriteVersion" => "0";
  requires "Dist::Zilla::Plugin::RunExtraTests" => "0";
  requires "Dist::Zilla::Plugin::Test::CPAN::Changes" => "0";
  requires "Dist::Zilla::Plugin::Test::CPAN::Meta::JSON" => "0";
  requires "Dist::Zilla::Plugin::Test::CheckManifest" => "0";
  requires "Dist::Zilla::Plugin::Test::CleanNamespaces" => "0";
  requires "Dist::Zilla::Plugin::Test::Compile" => "0";
  requires "Dist::Zilla::Plugin::Test::Fixme" => "0";
  requires "Dist::Zilla::Plugin::Test::NoBreakpoints" => "0";
  requires "Dist::Zilla::Plugin::Test::NoTabs" => "0";
  requires "Dist::Zilla::Plugin::Test::Perl::Critic" => "0";
  requires "Dist::Zilla::Plugin::Test::PodSpelling" => "0";
  requires "Dist::Zilla::Plugin::Test::ReportPrereqs" => "0";
  requires "Dist::Zilla::Plugin::Test::TrailingSpace" => "0";
  requires "Dist::Zilla::Plugin::Test::UnusedVars" => "0";
  requires "Dist::Zilla::Plugin::Test::Version" => "0";
  requires "Dist::Zilla::PluginBundle::Basic" => "0";
  requires "Dist::Zilla::PluginBundle::Filter" => "0";
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Pod::Weaver::Section::BugsAndLimitations" => "0";
  requires "Pod::Weaver::Section::SeeAlso" => "0";
  requires "Software::License::GPL_3" => "0";
  requires "Test::CPAN::Changes" => "0.19";
  requires "Test::CPAN::Meta::JSON" => "0.16";
  requires "Test::CleanNamespaces" => "0.15";
  requires "Test::More" => "0.88";
  requires "Test::NoBreakpoints" => "0.15";
  requires "Test::NoTabs" => "0";
  requires "Test::Perl::Critic" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
  requires "Test::Spelling" => "0.12";
  requires "Test::TrailingSpace" => "0.0203";
  requires "Test::Version" => "1";
};
