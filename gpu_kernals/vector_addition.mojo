from max.driver import accelerator, cpu
from sys import exit, has_accelerator


def main():
    if not has_accelerator():
        print("Has no accelerator")
        exit()

    host_device = cpu()
    print("Found cpu: ", host_device)

    gpu_device = accelerator()
    print("Found gpu: ", gpu_device)