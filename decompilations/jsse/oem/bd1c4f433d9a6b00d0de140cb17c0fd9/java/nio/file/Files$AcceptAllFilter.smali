.class Ljava/nio/file/Files$AcceptAllFilter;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcceptAllFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream$Filter",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field static final FILTER:Ljava/nio/file/Files$AcceptAllFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 420
    new-instance v0, Ljava/nio/file/Files$AcceptAllFilter;

    invoke-direct {v0}, Ljava/nio/file/Files$AcceptAllFilter;-><init>()V

    sput-object v0, Ljava/nio/file/Files$AcceptAllFilter;->FILTER:Ljava/nio/file/Files$AcceptAllFilter;

    .line 412
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Ljava/nio/file/Files$AcceptAllFilter;->accept(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public accept(Ljava/nio/file/Path;)Z
    .registers 3
    .param p1, "entry"    # Ljava/nio/file/Path;

    .prologue
    .line 418
    const/4 v0, 0x1

    return v0
.end method
