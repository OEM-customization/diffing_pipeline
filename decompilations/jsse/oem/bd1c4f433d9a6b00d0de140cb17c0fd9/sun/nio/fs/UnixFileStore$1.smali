.class Lsun/nio/fs/UnixFileStore$1;
.super Ljava/lang/Object;
.source "UnixFileStore.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixFileStore;->checkIfFeaturePresent(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;
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
        "Ljava/util/Properties;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/UnixFileStore;


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixFileStore;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/fs/UnixFileStore;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/fs/UnixFileStore$1;->this$0:Lsun/nio/fs/UnixFileStore;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore$1;->run()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 228
    invoke-static {}, Lsun/nio/fs/UnixFileStore;->-wrap0()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method
