import Fastify from 'fastify';

// Require the framework and instantiate it
const fastify = Fastify({ logger: true });

// Declare a route
fastify.get('/', async () => {
  return { hello: 'world' };
});

// Run the server!
const port = process.env.PORT ?? 8080;
const start = async () => {
  try {
    await fastify.listen(port, '0.0.0.0');
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};
start();
