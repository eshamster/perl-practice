use strict;
package America;

use Exporter;
our @ISA = qw(Exporter);

our @EXPORT      = qw(beef orange car);
our @EXPORT_OK   = qw(cd dvd);
our @EXPORT_FAIL = "oil";
our %EXPORT_TAGS = (
    round => [qw(orange cd dvd)],
    hard => [qw(car cd dvd)],
    liquid => [qw(oil)],
    );

sub beef {
    print "I'm American BEEF! Buy me and eat me ! \n";
}

sub orange {
    print "I'm American ORANGE! Buy me and eat me ! \n";
}

sub car {
    print "I'm American CAR! Buy me and ride me ! \n";
}

sub cd {
    print "I'm American CD! Well, you can buy me and listen to... \n";
}

sub dvd {
    print "I'm American DVD! Well, you can buy me and listen to... \n";
}

sub oil {
    print "I'm American OIL! Well, you can never buy me! \n";
}

1;
