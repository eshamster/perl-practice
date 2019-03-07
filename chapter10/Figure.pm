package Figure;

sub AUTOLOAD {
    my ($class, @rest) = @_;
    warn "You are about to invoke $AUTOLOAD using the argment ",
        join(', ', @rest), " !!! \n";
    warn "But I don't know how to do it! \n";
    return "UNKNOWN";
}

1;
