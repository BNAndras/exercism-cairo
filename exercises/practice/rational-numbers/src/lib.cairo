#[derive(Drop, Debug)]
struct Rational {}

#[generate_trait]
pub impl RationalImpl of RationalTrait {
    fn new(numer: i128, denom: i128) -> Rational {
        // construct a new Rational struct
        panic!("implement `new`")
    }
}

impl RationalPartialEq of PartialEq<Rational> {
    fn eq(lhs: @Rational, rhs: @Rational) -> bool {
        // determine whether the two Rational numbers are equal
        panic!("implement `eq`")
    }
}

impl RationalNeg of Neg<Rational> {
    fn neg(a: Rational) -> Rational {
        // return the negative value of the Rational number {a}
        panic!("implement `neg`")
    }
}

impl RationalAdd of Add<Rational> {
    fn add(lhs: Rational, rhs: Rational) -> Rational {
        // return the sum of {lhs} and {rhs}
        panic!("implement `add`")
    }
}

impl RationalSub of Sub<Rational> {
    fn sub(lhs: Rational, rhs: Rational) -> Rational {
        // return the difference of {lhs} and {rhs}
        panic!("implement `sub`")
    }
}

impl RationalMul of Mul<Rational> {
    fn mul(lhs: Rational, rhs: Rational) -> Rational {
        // return the product of {lhs} and {rhs}
        panic!("implement `mul`")
    }
}

impl RationalDiv of Div<Rational> {
    fn div(lhs: Rational, rhs: Rational) -> Rational {
        // return the quotient of {lhs} and {rhs}
        panic!("implement `div`")
    }
}

#[generate_trait]
pub impl RationalAbs of RationalAbsTrait {
    fn abs(self: @Rational) -> Rational {
        // return the absolute value of the given Rational number
        panic!("implement `abs`")
    }
}

#[generate_trait]
pub impl RationalPow of RationalPowTrait {
    fn pow(self: @Rational, power: i128) -> Rational {
        // return a Rational number that is the result of raising {self} to the power of {power}
        panic!("implement `pow`")
    }

    fn rpow(self: @u128, power: Rational) -> u128 {
        // return an integer that is the result of raising the integer {self} to the power of
        // a Rational number {power}
        panic!("implement `rpow`")
    }
}

