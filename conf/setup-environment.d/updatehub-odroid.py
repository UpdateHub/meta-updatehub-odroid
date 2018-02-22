def __after_init_updatehub_odroid():
    PLATFORM_ROOT_DIR = os.environ['PLATFORM_ROOT_DIR']

    append_layers([ os.path.join(PLATFORM_ROOT_DIR, 'sources', p) for p in
                    [
                        'meta-odroid',
                        'meta-updatehub-odroid',
                    ]])

run_after_init(__after_init_updatehub_odroid)
