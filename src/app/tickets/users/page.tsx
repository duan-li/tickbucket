const users = [
  {
    name: "Alice Ling",
    job: "Software Engineer",
    isAvailable: false,
  },
  // ... add as much users as you want
];
export default function UserList() {
  return <div>We have {users.length} users</div>;
}
