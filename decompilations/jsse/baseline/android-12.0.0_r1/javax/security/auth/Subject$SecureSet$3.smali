.class Ljavax/security/auth/Subject$SecureSet$3;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->contains(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljavax/security/auth/Subject$SecureSet;

.field final synthetic blacklist val$e:Ljava/util/Iterator;


# direct methods
.method constructor blacklist <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V
    .registers 3
    .param p1, "this$0"    # Ljavax/security/auth/Subject$SecureSet;

    .line 1190
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$3;, "Ljavax/security/auth/Subject$SecureSet$3;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$3;->this$0:Ljavax/security/auth/Subject$SecureSet;

    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$3;->val$e:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1192
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$3;, "Ljavax/security/auth/Subject$SecureSet$3;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$3;->val$e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
