const users = [
  {
    name: "Harry Green",
    job: "QA Engineer",
    isAvailable: false,
  },
  {
    name: "Trudy Torres",
    job: "Project Manager",
    isAvailable: true,
  },
  {
    name: "Alice Ling",
    job: "Software Engineer",
    isAvailable: false,
  },
];
export default function UserList() {
  return (
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Job</th>
        </tr>
      </thead>
      <tbody>
        {users.map((user) => (
          <tr key={user.name}>
            <td>
              {user.name}({user.isAvailable ? "Available" : "Not available"})
            </td>
            <td>{user.job}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
