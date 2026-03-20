type User = { name: string; age: number };

const u: User = { name: "Ada", age: 20 };

function greet(user: User): string {
  return `Hi ${user.name}, you are ${user.age}`;
}

console.log(greet(u));
