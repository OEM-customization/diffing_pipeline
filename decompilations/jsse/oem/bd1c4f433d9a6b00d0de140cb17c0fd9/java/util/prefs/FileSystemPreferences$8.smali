.class Ljava/util/prefs/FileSystemPreferences$8;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->sync()V
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
        "Ljava/lang/Long;",
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
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$8;->this$0:Ljava/util/prefs/FileSystemPreferences;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Long;
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 735
    iget-object v4, p0, Ljava/util/prefs/FileSystemPreferences$8;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-virtual {v4}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 736
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 737
    .local v0, "nmt":J
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get11()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_23

    :goto_1a
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-set2(Z)Z

    .line 742
    :goto_1d
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object v2

    :cond_23
    move v2, v3

    .line 737
    goto :goto_1a

    .line 739
    .end local v0    # "nmt":J
    :cond_25
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 740
    .restart local v0    # "nmt":J
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get7()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_39

    :goto_35
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-set0(Z)Z

    goto :goto_1d

    :cond_39
    move v2, v3

    goto :goto_35
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 733
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$8;->run()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
