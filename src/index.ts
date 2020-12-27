import Fastify from "fastify";

// Require the framework and instantiate it
const fastify = Fastify({ logger: true });

// Declare a route
fastify.get("/", async () => {
  return { hello: "world" };
});

// Run the server!
const port = 3000;
const start = async () => {
  try {
    await fastify.listen(port);
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};
start();
