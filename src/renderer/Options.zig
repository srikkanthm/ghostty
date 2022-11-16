//! The options that are used to configure a renderer.

const font = @import("../font/main.zig");
const renderer = @import("../renderer.zig");
const Window = @import("../Window.zig");

/// The font group that should be used.
font_group: *font.GroupCache,

/// Padding options for the viewport.
padding: Padding,

/// The mailbox for sending the window messages. This is only valid
/// once the thread has started and should not be used outside of the thread.
window_mailbox: Window.Mailbox,

pub const Padding = struct {
    // Explicit padding options, in pixels. The windowing thread is
    // expected to convert points to pixels for a given DPI.
    explicit: renderer.Padding,

    // Balance options
    balance: bool = false,
};
