.class Ljavax/security/auth/Subject$SecureSet$6;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;

.field final synthetic val$e:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 1
    .local p1, "this$1":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$6;->this$1:Ljavax/security/auth/Subject$SecureSet;

    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$6;->val$e:Ljava/util/Iterator;

    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1296
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$6;->val$e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method