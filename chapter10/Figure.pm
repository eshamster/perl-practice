package Figure;

sub space {
    my ($class, @rest) = @_;
    warn "you  are about to calculate the space of $class using the argment ",
        join(', ', @rest), " !!! \n";
    warn "But I don't know how to do it! \n";
    return "UNKNOWN";
}

1;
