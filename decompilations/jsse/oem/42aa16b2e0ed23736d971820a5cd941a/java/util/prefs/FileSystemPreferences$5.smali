.class Ljava/util/prefs/FileSystemPreferences$5;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->writeBackCache()V
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
.field final synthetic blacklist this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;

    .line 614
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

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

    .line 614
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$5;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 617
    :try_start_0
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;
    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->access$1400(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;
    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->access$1400(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_36

    .line 618
    :cond_19
    new-instance v0, Ljava/util/prefs/BackingStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->access$1400(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " create failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    throw v0

    .line 620
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    :cond_36
    :goto_36
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->access$1500(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_97

    .line 621
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_41
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->access$1100(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/prefs/XmlSupport;->exportMap(Ljava/io/OutputStream;Ljava/util/Map;)V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_8d

    .line 622
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 623
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;
    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->access$1500(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->access$1600(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 630
    nop

    .line 631
    const/4 v0, 0x0

    return-object v0

    .line 624
    :cond_62
    new-instance v0, Ljava/util/prefs/BackingStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    .line 625
    # getter for: Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->access$1500(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->access$1600(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    throw v0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_8d} :catch_97

    .line 620
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    :catchall_8d
    move-exception v1

    :try_start_8e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    goto :goto_96

    :catchall_92
    move-exception v2

    :try_start_93
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    :goto_96
    throw v1
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_97} :catch_97

    .line 626
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences$5;
    :catch_97
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/util/prefs/BackingStoreException;

    if-eqz v1, :cond_a0

    .line 628
    move-object v1, v0

    check-cast v1, Ljava/util/prefs/BackingStoreException;

    throw v1

    .line 629
    :cond_a0
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v1, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
