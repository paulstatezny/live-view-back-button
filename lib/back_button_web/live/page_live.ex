defmodule BackButtonWeb.PageLive do
  use BackButtonWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, number: 1)}
  end

  @impl true
  def handle_event("increment", _, socket) do
    {:noreply, assign(socket, number: socket.assigns.number + 1)}
  end

  @impl true
  def handle_event("decrement", _, socket) do
    {:noreply, assign(socket, number: socket.assigns.number - 1)}
  end

  @impl true
  def handle_event("push-patch", _, socket) do
    {:noreply, push_patch(socket, to: "/#{socket.assigns.number}")}
  end

  @impl true
  def handle_event("push-redirect", _, socket) do
    {:noreply, push_redirect(socket, to: "/#{socket.assigns.number}")}
  end

  @impl true
  def handle_params(_params, _uri, socket) do
    {:noreply, socket}
  end
end
