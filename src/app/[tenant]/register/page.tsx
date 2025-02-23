export default async function Registration({ params }) {
    const { tenant } = params;
    return <strong>Registration Page of Tenant-ID={tenant}</strong>;
  }