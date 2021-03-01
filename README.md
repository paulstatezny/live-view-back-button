# LiveViewBackButton

An example Phoenix application to observe Phoenix LiveView behavior when using `push_patch` and `push_redirect`.

To start the Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## The state of the LiveView

- There is a number held in `socket.assigns.number`.
- It is always initiated on `mount` as `1`.
- It is rendered on the page.
- Clicking "Increment" increments the number in `assigns`.
- Clicking "Decrement" decrements the number in `assigns`.

## Testing `push_patch` and `push_redirect`

- Clicking "Change page (push_patch)" calls `push_patch` to the path `/:number`
- Clicking "Change page (push_redirect)" calls `push_redirect` to the path `/:number`
- `:number` above is whatever is in `socket.assigns.number`
- Try changing `number`, clicking `push_patch`, and then clicking the browser back button. Note that the URL goes back to the last URL in history, but the number displayed on the screen stays the same because the LiveView has not been re-mounted.
- Try changing `number`, clicking `push_redirect`, and then clicking the browser back button. Note that the URL goes back to the last URL in history, but the number displayed on the screen becomes `1` because the LiveView is re-mounted.
