.class Ljava/util/Collections$EmptyEnumeration;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY_ENUMERATION:Ljava/util/Collections$EmptyEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collections$EmptyEnumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4313
    new-instance v0, Ljava/util/Collections$EmptyEnumeration;

    invoke-direct {v0}, Ljava/util/Collections$EmptyEnumeration;-><init>()V

    .line 4312
    sput-object v0, Ljava/util/Collections$EmptyEnumeration;->EMPTY_ENUMERATION:Ljava/util/Collections$EmptyEnumeration;

    .line 4311
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4311
    .local p0, "this":Ljava/util/Collections$EmptyEnumeration;, "Ljava/util/Collections$EmptyEnumeration<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 4315
    .local p0, "this":Ljava/util/Collections$EmptyEnumeration;, "Ljava/util/Collections$EmptyEnumeration<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 4316
    .local p0, "this":Ljava/util/Collections$EmptyEnumeration;, "Ljava/util/Collections$EmptyEnumeration<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
