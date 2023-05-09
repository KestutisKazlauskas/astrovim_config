return {
  python = {
    type = "python",
    request = "attach",
    connect = {
      port = 5678,
      host = "127.0.0.1",
    },
    mode = "remote",
    name = "Container Attach Debug",
    cwd = vim.fn.getcwd(),
    pathMappings = {
      {
        localRoot = function()
          return vim.fn.input("Local code folder > ", vim.fn.getcwd(), "file")
          "/home/kestutis/projects/Amazon-Sixads-Klaviyo-Production/api", -- Local folder the code lives
        end,
        remoteRoot = function()
          return vim.fn.input("Container code folder > ", "/", "file")
          "/code", -- Wherever your Python code lives in the container.
        end,
      },
    },
  }
}
