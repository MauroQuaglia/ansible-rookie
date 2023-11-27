#!/usr/bin/python3

from ansible.module_utils.basic import AnsibleModule

def my_ping(module, site):
    ping_path = module.get_bin_path('ping', required=True)
    args = [ping_path, "-c", "1", site]
    return module.run_command(args)

def main():
    module = AnsibleModule(argument_spec=dict(site=dict(required=True)))
    site = module.params['site']

    rc, out, err = my_ping(module, site)

    if rc == 0:
        module.exit_json(changed=False, msg="Ping!")
    else:
        module.fail_json(msg=f"No ping! Error: {err}")

if __name__ == "__main__":
    main()