![Fox Mockery](https://github.com/Mekaeil/Fox.Mockery/blob/master/public/logo-150.png?raw=true)

# Fox Mockery Server

**[Fox Mockery Documentation](https://github.com/weprodev/Fox.Mockery.Framework)**

**You can use the Fox Mockery Server for:**

- Contract Testing
- API Documentation
- E2E Testing
- Generate Open API Specification

# Install on your local

follow below steps to run a Mock Server on your local.

1. Clone the repository
2. Run this command on the Fox Mockery directory `make docker`
3. Now you can [open it on your browser - localhost:8030](http://localhost:8030) and then use [Insomnia](https://insomnia.rest/)
   or [Postman](https://www.postman.com/downloads/)

![Fox Mockery Service Result](https://github.com/weprodev/Fox.Mockery/raw/master/public/petstore-open-api-specification-Fox-Mockery.png)

If you create a new service in the `mocks` directory, and you want to generate Open Api Specification, run this command:
```
make openapi 
```

# Configuration

Fox Mockery has three config files:

- **fox_services**: you can define your services here
- **fox_openapis**: Open API Specification configuration
- **fox_settings**: main config of the Fox Mockery

> You can define different products or services as a service in
> `fox_services` config file, each service has a unique address.

# OPEN API SPECIFICATION

Open API Specification files will generate according to the json files in the mock service directory.

```bash
// generate Open API Specification for all service
make openapi

// Example 
make openapi petstore
 
 // OUTPUT
 AFTER RUNNING THIS COMMAND index.oas.json, index.oas.yml and route.json FILES WILL CREATE IN THE SERVICE DIRECTORY!'
```

## License

The Fox Mockery is an open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

