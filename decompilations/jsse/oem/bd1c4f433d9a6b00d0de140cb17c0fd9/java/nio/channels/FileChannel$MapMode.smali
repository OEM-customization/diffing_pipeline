.class public Ljava/nio/channels/FileChannel$MapMode;
.super Ljava/lang/Object;
.source "FileChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/FileChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapMode"
.end annotation


# static fields
.field public static final PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

.field public static final READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

.field public static final READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 796
    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    const-string/jumbo v1, "READ_ONLY"

    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    .line 795
    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 802
    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    const-string/jumbo v1, "READ_WRITE"

    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    .line 801
    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    .line 808
    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    const-string/jumbo v1, "PRIVATE"

    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    .line 807
    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    .line 790
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    iput-object p1, p0, Ljava/nio/channels/FileChannel$MapMode;->name:Ljava/lang/String;

    .line 814
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Ljava/nio/channels/FileChannel$MapMode;->name:Ljava/lang/String;

    return-object v0
.end method
