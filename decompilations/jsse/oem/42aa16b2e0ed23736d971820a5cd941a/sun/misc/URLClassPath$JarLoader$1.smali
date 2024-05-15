.class Lsun/misc/URLClassPath$JarLoader$1;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/misc/URLClassPath$JarLoader;


# direct methods
.method constructor blacklist <init>(Lsun/misc/URLClassPath$JarLoader;)V
    .registers 2
    .param p1, "this$0"    # Lsun/misc/URLClassPath$JarLoader;

    .line 889
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 889
    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    # getter for: Lsun/misc/URLClassPath;->DEBUG:Z
    invoke-static {}, Lsun/misc/URLClassPath;->access$500()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 892
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;
    invoke-static {v2}, Lsun/misc/URLClassPath$JarLoader;->access$600(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 893
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 896
    :cond_25
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$600(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v1

    # invokes: Lsun/misc/URLClassPath$JarLoader;->getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    invoke-static {v0, v1}, Lsun/misc/URLClassPath$JarLoader;->access$800(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v1

    # setter for: Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;
    invoke-static {v0, v1}, Lsun/misc/URLClassPath$JarLoader;->access$702(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    .line 897
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$700(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;
    invoke-static {v2}, Lsun/misc/URLClassPath$JarLoader;->access$1000(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/MetaIndex;

    move-result-object v2

    invoke-static {v1, v2}, Lsun/misc/JarIndex;->getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;

    move-result-object v1

    # setter for: Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;
    invoke-static {v0, v1}, Lsun/misc/URLClassPath$JarLoader;->access$902(Lsun/misc/URLClassPath$JarLoader;Lsun/misc/JarIndex;)Lsun/misc/JarIndex;

    .line 898
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$900(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_88

    .line 899
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$900(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;

    move-result-object v0

    invoke-virtual {v0}, Lsun/misc/JarIndex;->getJarFiles()[Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "jarfiles":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_59
    array-length v3, v0

    if-ge v2, v3, :cond_88

    .line 907
    :try_start_5c
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;
    invoke-static {v4}, Lsun/misc/URLClassPath$JarLoader;->access$600(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 909
    .local v3, "jarURL":Ljava/net/URL;
    invoke-static {v3}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    .line 910
    .local v4, "urlNoFragString":Ljava/lang/String;
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;
    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->access$1100(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 911
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;
    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->access$1100(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/net/MalformedURLException; {:try_start_5c .. :try_end_82} :catch_83

    .line 915
    .end local v3    # "jarURL":Ljava/net/URL;
    .end local v4    # "urlNoFragString":Ljava/lang/String;
    :cond_82
    goto :goto_85

    .line 913
    :catch_83
    move-exception v3

    .line 914
    .local v3, "e":Ljava/net/MalformedURLException;
    nop

    .line 905
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 918
    .end local v0    # "jarfiles":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_88
    return-object v1
.end method
