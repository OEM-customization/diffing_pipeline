.class Ljava/io/ObjectStreamClass$1;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass;->getSerialVersionUID()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/io/ObjectStreamClass;


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectStreamClass;)V
    .registers 2
    .param p1, "this$0"    # Ljava/io/ObjectStreamClass;

    .line 259
    iput-object p1, p0, Ljava/io/ObjectStreamClass$1;->this$0:Ljava/io/ObjectStreamClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Long;
    .registers 3

    .line 261
    iget-object v0, p0, Ljava/io/ObjectStreamClass$1;->this$0:Ljava/io/ObjectStreamClass;

    # getter for: Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->access$000(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    # invokes: Ljava/io/ObjectStreamClass;->computeDefaultSUID(Ljava/lang/Class;)J
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->access$100(Ljava/lang/Class;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2

    .line 259
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$1;->run()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
