.class public Lsun/misc/SharedSecrets;
.super Ljava/lang/Object;
.source "SharedSecrets.java"


# static fields
.field private static javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavaIOFileDescriptorAccess()Lsun/misc/JavaIOFileDescriptorAccess;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    return-object v0
.end method

.method public static setJavaIOFileDescriptorAccess(Lsun/misc/JavaIOFileDescriptorAccess;)V
    .registers 1
    .param p0, "jiofda"    # Lsun/misc/JavaIOFileDescriptorAccess;

    .prologue
    .line 42
    sput-object p0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    .line 43
    return-void
.end method
