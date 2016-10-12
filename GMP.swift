import CGMP

public class GMP {
	var v_ = mpz_t()
	public init() {
		__gmpz_init(&v_)
	}

	public init(n: UInt) {
		__gmpz_init_set_ui(&v_, n)
	}

	public init(n: mpz_t) {
		v_ = n
	}	

	public func setValue(n: UInt) {
		__gmpz_set_ui(&v_, n)
	}

	public func add(n: UInt) {
		__gmpz_add_ui(&v_, &v_, n)
	}

	public func mul(n: UInt) {
		__gmpz_mul_ui(&v_, &v_, n)
	}

	public func mul(n: GMP) {
		__gmpz_mul(&v_, &v_, &n.v_)
	}

	public func mod(n: GMP) {
		__gmpz_mod(&v_, &v_, &n.v_)
	}

	public func compare(n: UInt) -> Int32 {
		return __gmpz_cmp_ui(&v_, n)
	}

	public func compare(v2: GMP) -> Int32 {
		return __gmpz_cmp(&v_, &v2.v_)
	}

	public func assignSub(v1: GMP, v2: GMP) {
		__gmpz_sub(&v_, &v1.v_, &v2.v_)
	}

	public func assignGCD(v1: GMP, v2: GMP) {
		__gmpz_gcd(&v_, &v1.v_, &v2.v_)
	}

	public func set(n: GMP) {
		__gmpz_set(&v_, &n.v_)
	}

	public func assignPow(base: UInt, p: UInt) {
		__gmpz_ui_pow_ui(&v_, base, p)
	}

	public func toString() -> String {
		let string = String(cString:__gmpz_get_str(nil, 10, &v_))
		return  string
	}
}

var g = GMP()

