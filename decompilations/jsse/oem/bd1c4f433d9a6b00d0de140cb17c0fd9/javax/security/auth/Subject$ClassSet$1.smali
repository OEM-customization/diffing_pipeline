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
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavax/security/auth/Subject$ClassSet;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$ClassSet;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 1
    .local p1, "this$1":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$ClassSet$1;->this$1:Ljavax/security/auth/Subject$ClassSet;

    iput-object p2, p0, Ljavax/security/auth/Subject$ClassSet$1;->val$iterator:Ljava/util/Iterator;

    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1401
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
