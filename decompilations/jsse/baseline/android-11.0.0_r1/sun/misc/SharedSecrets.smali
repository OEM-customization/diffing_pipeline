.class public Lsun/misc/SharedSecrets;
.super Ljava/lang/Object;
.source "SharedSecrets.java"


# static fields
.field private static blacklist javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getJavaIOFileDescriptorAccess()Lsun/misc/JavaIOFileDescriptorAccess;
    .registers 2

    .line 142
    sget-object v0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    if-nez v0, :cond_11

    .line 144
    :try_start_4
    const-string v0, "java.io.FileDescriptor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_a

    .line 148
    goto :goto_11

    .line 145
    :catch_a
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 150
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_11
    :goto_11
    sget-object v0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    return-object v0
.end method

.method public static blacklist setJavaIOFileDescriptorAccess(Lsun/misc/JavaIOFileDescriptorAccess;)V
    .registers 1
    .param p0, "jiofda"    # Lsun/misc/JavaIOFileDescriptorAccess;

    .line 135
    sput-object p0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    .line 136
    return-void
.end method
