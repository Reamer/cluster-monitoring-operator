{
  prometheusOperator+:: {
    deployment+:
      {
        spec+: {
          template+: {
            spec+: {
              securityContext: {},

              containers:
                std.map(
                  function(c) c {
                    resources: {},
                    args+: ['--namespaces=' + $._config.namespace],
                    securityContext: {},
                  },
                  super.containers,
                ),
            },
          },
        },
      },
  },
}
