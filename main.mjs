import bcrypt from 'bcrypt';

(async () => {
    const hash = await bcrypt.hash('hello, 世界', 10);
    console.log(hash);
})();
