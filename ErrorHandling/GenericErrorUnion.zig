const std = @import("std");

fn findIndex(comptime T: type, haystack: []const T, needle: T) !usize {
    for (haystack, 0..) |item, index| {
        if (item == needle) return index;
    }
    return error.NotFound;
}

pub fn main() !void {
    const numbers = [_]i32{1, 3, 5, 7, 9};
    const index = findIndex(i32, &numbers, 2) catch |err| {
        std.debug.print("Error: {}\n", .{err});
        return;
    };
    std.debug.print("Found at index: {}\n", .{index});
}