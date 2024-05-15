.class Ljavax/crypto/JarVerifier$1;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/crypto/JarVerifier;->verify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/util/jar/JarFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/crypto/JarVerifier;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljavax/crypto/JarVerifier;Ljava/net/URL;)V
    .registers 3
    .param p1, "this$0"    # Ljavax/crypto/JarVerifier;

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/crypto/JarVerifier$1;->this$0:Ljavax/crypto/JarVerifier;

    iput-object p2, p0, Ljavax/crypto/JarVerifier$1;->val$url:Ljava/net/URL;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Ljavax/crypto/JarVerifier$1;->run()Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/jar/JarFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Ljavax/crypto/JarVerifier$1;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    .line 96
    .local v0, "conn":Ljava/net/JarURLConnection;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 97
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    return-object v1
.end method
