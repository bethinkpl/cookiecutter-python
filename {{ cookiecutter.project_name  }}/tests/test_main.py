import {{ cookiecutter.package_name }}.main as tested_module


def test_main() -> None:
    """docstring"""
    output = tested_module.main()
    assert True
