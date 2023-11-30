# CD12352 - Infrastructure as Code Project Solution

# Kenechukwu Josiah Onwe

## Spin up instructions

To spin up infrastructure for network or for application use the below command

Network e.g.

```
./exec.sh deploy stackname template.yml parameter.json
```

## Tear down instructions

It's Actually easier to tear down than to spin up infrastructure 🤣🤣

To tear down infrastructure for network or for application use the command below

```
./exec.sh delete stackname
```

### Key Concept

1. stackname: name of the instrastructure
2. template.yml: cloudformation resource template usually written in yml format
3. parameter.json: Parameter value are defined here.

## Other considerations

Please note that each instrastructure has its own template file written in yml format and a parameter file written in json.

Don't mix them up to avoid complication.

I you have any problem spining or tearing down infrastructure reach out to me at `kayceeorb@gmail.com`
