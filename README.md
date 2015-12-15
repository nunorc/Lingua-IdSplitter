# NAME

Lingua::IdSplitter - split identifiers into words

# VERSION

version 0.03

# SYNOPSIS

    use Lingua::IdSplitter;

    my $splitter = Lingua::IdSplitter->new;
    $splitter->split($identifier);

# DESCRIPTION

This module implements and algorithm to identify and split multi-word
identifier in their individual words. For example, "UserFind" in "user"
and "find", or "timesort" in "time" and "sort".

For more details on the algorithm check the following
[article](http://www.sciencedirect.com/science/article/pii/S0164121214002179)
(also available [here](http://hdl.handle.net/10198/11577)).

# FUNCTIONS

## new

Create a new splitter object. A list of specific dictionaries is optional,
check the `bin/id-splitter` command for an example on how to use more
dictionaries.

## soft\_split

Perform a soft split of the identifier, ie split words without using
explicit markers (eg, the underscore character, or CamelCase notation).

## hard\_split

Perform a hard split of the identifier, ie split words using
explicit markers (eg, the underscore character, or CamelCase notation).

## split

Perform a split applying first a hard split, and the applying a soft split
to the resulting set of the first split.

## explain

Show the computed ranked (including scores) for a split.

# AUTHOR

Nuno Carvalho <smash@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2014-2015 by Project Natura <natura@natura.di.uminho.pt>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
