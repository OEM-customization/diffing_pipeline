.class public Lsun/security/util/Resources;
.super Ljava/util/ListResourceBundle;
.source "Resources.java"


# static fields
.field private static final blacklist contents:[[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 35
    const/16 v0, 0x41

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "invalid.null.input.s."

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "invalid null input(s)"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "actions.can.only.be.read."

    aput-object v3, v2, v4

    const-string v3, "actions can only be \'read\'"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "permission.name.name.syntax.invalid."

    aput-object v3, v2, v4

    const-string v3, "permission name [{0}] syntax invalid: "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Credential.Class.not.followed.by.a.Principal.Class.and.Name"

    aput-object v3, v2, v4

    const-string v3, "Credential Class not followed by a Principal Class and Name"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Principal.Class.not.followed.by.a.Principal.Name"

    aput-object v3, v2, v4

    const-string v3, "Principal Class not followed by a Principal Name"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Principal.Name.must.be.surrounded.by.quotes"

    aput-object v3, v2, v4

    const-string v3, "Principal Name must be surrounded by quotes"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Principal.Name.missing.end.quote"

    aput-object v3, v2, v4

    const-string v3, "Principal Name missing end quote"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PrivateCredentialPermission.Principal.Class.can.not.be.a.wildcard.value.if.Principal.Name.is.not.a.wildcard.value"

    aput-object v3, v2, v4

    const-string v3, "PrivateCredentialPermission Principal Class can not be a wildcard (*) value if Principal Name is not a wildcard (*) value"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CredOwner.Principal.Class.class.Principal.Name.name"

    aput-object v3, v2, v4

    const-string v3, "CredOwner:\n\tPrincipal Class = {0}\n\tPrincipal Name = {1}"

    aput-object v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "provided.null.name"

    aput-object v3, v2, v4

    const-string v3, "provided null name"

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "provided.null.keyword.map"

    aput-object v3, v2, v4

    const-string v3, "provided null keyword map"

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "provided.null.OID.map"

    aput-object v3, v2, v4

    const-string v3, "provided null OID map"

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "NEWLINE"

    aput-object v3, v2, v4

    const-string v3, "\n"

    aput-object v3, v2, v5

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "invalid.null.AccessControlContext.provided"

    aput-object v3, v2, v4

    const-string v3, "invalid null AccessControlContext provided"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "invalid.null.action.provided"

    aput-object v3, v2, v4

    const-string v3, "invalid null action provided"

    aput-object v3, v2, v5

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "invalid.null.Class.provided"

    aput-object v3, v2, v4

    const-string v3, "invalid null Class provided"

    aput-object v3, v2, v5

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Subject."

    aput-object v3, v2, v4

    const-string v3, "Subject:\n"

    aput-object v3, v2, v5

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".Principal."

    aput-object v3, v2, v4

    const-string v3, "\tPrincipal: "

    aput-object v3, v2, v5

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".Public.Credential."

    aput-object v3, v2, v4

    const-string v3, "\tPublic Credential: "

    aput-object v3, v2, v5

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".Private.Credentials.inaccessible."

    aput-object v3, v2, v4

    const-string v3, "\tPrivate Credentials inaccessible\n"

    aput-object v3, v2, v5

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".Private.Credential."

    aput-object v3, v2, v4

    const-string v3, "\tPrivate Credential: "

    aput-object v3, v2, v5

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".Private.Credential.inaccessible."

    aput-object v3, v2, v4

    const-string v3, "\tPrivate Credential inaccessible\n"

    aput-object v3, v2, v5

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Subject.is.read.only"

    aput-object v3, v2, v4

    const-string v3, "Subject is read-only"

    aput-object v3, v2, v5

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "attempting.to.add.an.object.which.is.not.an.instance.of.java.security.Principal.to.a.Subject.s.Principal.Set"

    aput-object v3, v2, v4

    const-string v3, "attempting to add an object which is not an instance of java.security.Principal to a Subject\'s Principal Set"

    aput-object v3, v2, v5

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "attempting.to.add.an.object.which.is.not.an.instance.of.class"

    aput-object v3, v2, v4

    const-string v3, "attempting to add an object which is not an instance of {0}"

    aput-object v3, v2, v5

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LoginModuleControlFlag."

    aput-object v3, v2, v4

    const-string v3, "LoginModuleControlFlag: "

    aput-object v3, v2, v5

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Invalid.null.input.name"

    aput-object v3, v2, v4

    const-string v3, "Invalid null input: name"

    aput-object v3, v2, v5

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "No.LoginModules.configured.for.name"

    aput-object v3, v2, v4

    const-string v3, "No LoginModules configured for {0}"

    aput-object v3, v2, v5

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "invalid.null.Subject.provided"

    aput-object v3, v2, v4

    const-string v3, "invalid null Subject provided"

    aput-object v3, v2, v5

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "invalid.null.CallbackHandler.provided"

    aput-object v3, v2, v4

    const-string v3, "invalid null CallbackHandler provided"

    aput-object v3, v2, v5

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "null.subject.logout.called.before.login"

    aput-object v3, v2, v4

    const-string v3, "null subject - logout called before login"

    aput-object v3, v2, v5

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unable.to.instantiate.LoginModule.module.because.it.does.not.provide.a.no.argument.constructor"

    aput-object v3, v2, v4

    const-string v3, "unable to instantiate LoginModule, {0}, because it does not provide a no-argument constructor"

    aput-object v3, v2, v5

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unable.to.instantiate.LoginModule"

    aput-object v3, v2, v4

    const-string v3, "unable to instantiate LoginModule"

    aput-object v3, v2, v5

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unable.to.instantiate.LoginModule."

    aput-object v3, v2, v4

    const-string v3, "unable to instantiate LoginModule: "

    aput-object v3, v2, v5

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unable.to.find.LoginModule.class."

    aput-object v3, v2, v4

    const-string v3, "unable to find LoginModule class: "

    aput-object v3, v2, v5

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unable.to.access.LoginModule."

    aput-object v3, v2, v4

    const-string v3, "unable to access LoginModule: "

    aput-object v3, v2, v5

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Login.Failure.all.modules.ignored"

    aput-object v3, v2, v4

    const-string v3, "Login Failure: all modules ignored"

    aput-object v3, v2, v5

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "java.security.policy.error.parsing.policy.message"

    aput-object v3, v2, v4

    const-string v3, "java.security.policy: error parsing {0}:\n\t{1}"

    aput-object v3, v2, v5

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "java.security.policy.error.adding.Permission.perm.message"

    aput-object v3, v2, v4

    const-string v3, "java.security.policy: error adding Permission, {0}:\n\t{1}"

    aput-object v3, v2, v5

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "java.security.policy.error.adding.Entry.message"

    aput-object v3, v2, v4

    const-string v3, "java.security.policy: error adding Entry:\n\t{0}"

    aput-object v3, v2, v5

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "alias.name.not.provided.pe.name."

    aput-object v3, v2, v4

    const-string v3, "alias name not provided ({0})"

    aput-object v3, v2, v5

    const/16 v3, 0x28

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unable.to.perform.substitution.on.alias.suffix"

    aput-object v3, v2, v4

    const-string v3, "unable to perform substitution on alias, {0}"

    aput-object v3, v2, v5

    const/16 v3, 0x29

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "substitution.value.prefix.unsupported"

    aput-object v3, v2, v4

    const-string v3, "substitution value, {0}, unsupported"

    aput-object v3, v2, v5

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LPARAM"

    aput-object v3, v2, v4

    const-string v3, "("

    aput-object v3, v2, v5

    const/16 v3, 0x2b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RPARAM"

    aput-object v3, v2, v4

    const-string v3, ")"

    aput-object v3, v2, v5

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "type.can.t.be.null"

    aput-object v3, v2, v4

    const-string v3, "type can\'t be null"

    aput-object v3, v2, v5

    const/16 v3, 0x2d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "keystorePasswordURL.can.not.be.specified.without.also.specifying.keystore"

    aput-object v3, v2, v4

    const-string v3, "keystorePasswordURL can not be specified without also specifying keystore"

    aput-object v3, v2, v5

    const/16 v3, 0x2e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "expected.keystore.type"

    aput-object v3, v2, v4

    const-string v3, "expected keystore type"

    aput-object v3, v2, v5

    const/16 v3, 0x2f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "expected.keystore.provider"

    aput-object v3, v2, v4

    const-string v3, "expected keystore provider"

    aput-object v3, v2, v5

    const/16 v3, 0x30

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "multiple.Codebase.expressions"

    aput-object v3, v2, v4

    const-string v3, "multiple Codebase expressions"

    aput-object v3, v2, v5

    const/16 v3, 0x31

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "multiple.SignedBy.expressions"

    aput-object v3, v2, v4

    const-string v3, "multiple SignedBy expressions"

    aput-object v3, v2, v5

    const/16 v3, 0x32

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "duplicate.keystore.domain.name"

    aput-object v3, v2, v4

    const-string v3, "duplicate keystore domain name: {0}"

    aput-object v3, v2, v5

    const/16 v3, 0x33

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "duplicate.keystore.name"

    aput-object v3, v2, v4

    const-string v3, "duplicate keystore name: {0}"

    aput-object v3, v2, v5

    const/16 v3, 0x34

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SignedBy.has.empty.alias"

    aput-object v3, v2, v4

    const-string v3, "SignedBy has empty alias"

    aput-object v3, v2, v5

    const/16 v3, 0x35

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "can.not.specify.Principal.with.a.wildcard.class.without.a.wildcard.name"

    aput-object v3, v2, v4

    const-string v3, "can not specify Principal with a wildcard class without a wildcard name"

    aput-object v3, v2, v5

    const/16 v3, 0x36

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "expected.codeBase.or.SignedBy.or.Principal"

    aput-object v3, v2, v4

    const-string v3, "expected codeBase or SignedBy or Principal"

    aput-object v3, v2, v5

    const/16 v3, 0x37

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "expected.permission.entry"

    aput-object v3, v2, v4

    const-string v3, "expected permission entry"

    aput-object v3, v2, v5

    const/16 v3, 0x38

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "number."

    aput-object v3, v2, v4

    const-string v3, "number "

    aput-object v3, v2, v5

    const/16 v3, 0x39

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "expected.expect.read.end.of.file."

    aput-object v3, v2, v4

    const-string v3, "expected [{0}], read [end of file]"

    aput-object v3, v2, v5

    const/16 v3, 0x3a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "expected.read.end.of.file."

    aput-object v3, v2, v4

    const-string v3, "expected [;], read [end of file]"

    aput-object v3, v2, v5

    const/16 v3, 0x3b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "line.number.msg"

    aput-object v3, v2, v4

    const-string v3, "line {0}: {1}"

    aput-object v3, v2, v5

    const/16 v3, 0x3c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "line.number.expected.expect.found.actual."

    aput-object v3, v2, v4

    const-string v3, "line {0}: expected [{1}], found [{2}]"

    aput-object v3, v2, v5

    const/16 v3, 0x3d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "null.principalClass.or.principalName"

    aput-object v3, v2, v4

    const-string v3, "null principalClass or principalName"

    aput-object v3, v2, v5

    const/16 v3, 0x3e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PKCS11.Token.providerName.Password."

    aput-object v3, v2, v4

    const-string v3, "PKCS11 Token [{0}] Password: "

    aput-object v3, v2, v5

    const/16 v3, 0x3f

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "unable.to.instantiate.Subject.based.policy"

    aput-object v2, v1, v4

    const-string v2, "unable to instantiate Subject-based policy"

    aput-object v2, v1, v5

    const/16 v2, 0x40

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/util/Resources;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 2

    .line 169
    sget-object v0, Lsun/security/util/Resources;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
