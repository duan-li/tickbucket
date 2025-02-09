import { Login } from "../Login";
import { FORM_TYPES } from "../formTypes";

export default function LoginPage({ searchParams }) {
  const wantsMagicLink = false; //searchParams.magicLink === "yes";
  const wantsPasswordRecovery = false; //searchParams.passwordRecovery === "yes";

  let formType = FORM_TYPES.PASSWORD_LOGIN;
  if (wantsMagicLink) {
    formType = FORM_TYPES.MAGIC_LINK;
  } else if (wantsPasswordRecovery) {
    formType = FORM_TYPES.PASSWORD_RECOVERY;
  }

  return <Login formType={formType} />;
}
