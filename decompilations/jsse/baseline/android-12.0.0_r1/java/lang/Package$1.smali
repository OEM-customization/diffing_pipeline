.class Ljava/lang/Package$1;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$fn:Ljava/lang/String;

.field final synthetic blacklist val$iname:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 583
    iput-object p1, p0, Ljava/lang/Package$1;->val$iname:Ljava/lang/String;

    iput-object p2, p0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 583
    invoke-virtual {p0}, Ljava/lang/Package$1;->run()Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Package;
    .registers 16

    .line 585
    iget-object v0, p0, Ljava/lang/Package$1;->val$iname:Ljava/lang/String;

    .line 587
    .local v0, "name":Ljava/lang/String;
    # getter for: Ljava/lang/Package;->urls:Ljava/util/Map;
    invoke-static {}, Ljava/lang/Package;->access$000()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 588
    .local v1, "url":Ljava/net/URL;
    if-nez v1, :cond_3c

    .line 590
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v2, "file":Ljava/io/File;
    :try_start_17
    invoke-static {v2}, Lsun/net/www/ParseUtil;->fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v3
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_1b} :catch_1d

    move-object v1, v3

    .line 594
    goto :goto_1e

    .line 593
    :catch_1d
    move-exception v3

    .line 595
    :goto_1e
    if-eqz v1, :cond_3c

    .line 596
    # getter for: Ljava/lang/Package;->urls:Ljava/util/Map;
    invoke-static {}, Ljava/lang/Package;->access$000()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 599
    # getter for: Ljava/lang/Package;->mans:Ljava/util/Map;
    invoke-static {}, Ljava/lang/Package;->access$200()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    # invokes: Ljava/lang/Package;->loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;
    invoke-static {v4}, Ljava/lang/Package;->access$100(Ljava/lang/String;)Ljava/util/jar/Manifest;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .end local v2    # "file":Ljava/io/File;
    :cond_3c
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 606
    # getter for: Ljava/lang/Package;->mans:Ljava/util/Map;
    invoke-static {}, Ljava/lang/Package;->access$200()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Manifest;

    .line 607
    .local v2, "man":Ljava/util/jar/Manifest;
    if-eqz v2, :cond_69

    .line 608
    new-instance v3, Ljava/lang/Package;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    invoke-direct/range {v6 .. v11}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/lang/Package$1;)V

    .local v3, "pkg":Ljava/lang/Package;
    goto :goto_78

    .line 610
    .end local v3    # "pkg":Ljava/lang/Package;
    :cond_69
    new-instance v3, Ljava/lang/Package;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v3

    move-object v6, v0

    invoke-direct/range {v5 .. v14}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 613
    .restart local v3    # "pkg":Ljava/lang/Package;
    :goto_78
    # getter for: Ljava/lang/Package;->pkgs:Ljava/util/Map;
    invoke-static {}, Ljava/lang/Package;->access$400()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-object v3
.end method
