If you have only 1024 MB RAM, you may need at least 3 GB swap.

```bash
sudo fallocate -l 3G /swapfile && \
sudo chmod 600 /swapfile && \
ls -lh /swapfile | grep -e "-rw-------" && \
sudo mkswap /swapfile && \
sudo swapon /swapfile && \
sudo swapon --show && \
sudo cp /etc/fstab /etc/fstab.bak && \
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```

Check Swap
```bash
grep Swap /proc/meminfo
```
