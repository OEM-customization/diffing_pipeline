.class public Lcom/android/org/bouncycastle/util/io/pem/PemObject;
.super Ljava/lang/Object;
.source "PemObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;


# instance fields
.field private content:[B

.field private headers:Ljava/util/List;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->EMPTY_LIST:Ljava/util/List;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[B)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/util/List;
    .param p3, "content"    # [B

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->type:Ljava/lang/String;

    .line 40
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->headers:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->content:[B

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .prologue
    .line 27
    sget-object v0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    .line 28
    return-void
.end method


# virtual methods
.method public generate()Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .prologue
    .line 62
    return-object p0
.end method

.method public getContent()[B
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->content:[B

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->type:Ljava/lang/String;

    return-object v0
.end method
