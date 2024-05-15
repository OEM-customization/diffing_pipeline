.class Ljavax/security/auth/Subject$ClassSet$1;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$ClassSet;->populateSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljavax/security/auth/Subject$ClassSet;

.field final synthetic blacklist val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor blacklist <init>(Ljavax/security/auth/Subject$ClassSet;Ljava/util/Iterator;)V
    .registers 3
    .param p1, "this$1"    # Ljavax/security/auth/Subject$ClassSet;

    .line 1399
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet$1;, "Ljavax/security/auth/Subject$ClassSet$1;"
    iput-object p1, p0, Ljavax/security/auth/Subject$ClassSet$1;->this$1:Ljavax/security/auth/Subject$ClassSet;

    iput-object p2, p0, Ljavax/security/auth/Subject$ClassSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2

    .line 1401
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet$1;, "Ljavax/security/auth/Subject$ClassSet$1;"
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
