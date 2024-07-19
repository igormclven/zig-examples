const std = @import("std");

fn fib(n: u64) u64 {
    if (n <= 1) {
        return n;
    }
    return fib(n - 1) + fib(n - 2);
}

pub fn main() !void {
    const n: u64 = 10;
    std.debug.print("Fibonacci of {} is {}\n", .{n, fib(n)});
}