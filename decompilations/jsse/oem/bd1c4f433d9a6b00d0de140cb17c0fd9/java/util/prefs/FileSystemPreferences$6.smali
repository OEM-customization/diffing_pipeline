.class Ljava/util/prefs/FileSystemPreferences$6;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->childrenNamesSpi()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method constructor <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$6;->this$0:Ljava/util/prefs/FileSystemPreferences;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 647
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$6;->run()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 648
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$6;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 650
    .local v0, "dirContents":[Ljava/io/File;
    if-eqz v0, :cond_2d

    .line 651
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v3, v0

    if-ge v1, v3, :cond_2d

    .line 652
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 653
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 655
    .end local v1    # "i":I
    :cond_2d
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get0()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method