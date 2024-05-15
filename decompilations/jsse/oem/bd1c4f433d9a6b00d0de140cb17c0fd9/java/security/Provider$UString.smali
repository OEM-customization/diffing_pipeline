.class Ljava/security/Provider$UString;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UString"
.end annotation


# instance fields
.field final lowerString:Ljava/lang/String;

.field final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    iput-object p1, p0, Ljava/security/Provider$UString;->string:Ljava/lang/String;

    .line 1287
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    .line 1288
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1295
    if-ne p0, p1, :cond_4

    .line 1296
    const/4 v1, 0x1

    return v1

    .line 1298
    :cond_4
    instance-of v1, p1, Ljava/security/Provider$UString;

    if-nez v1, :cond_a

    .line 1299
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 1301
    check-cast v0, Ljava/security/Provider$UString;

    .line 1302
    .local v0, "other":Ljava/security/Provider$UString;
    iget-object v1, p0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    iget-object v2, v0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1291
    iget-object v0, p0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1306
    iget-object v0, p0, Ljava/security/Provider$UString;->string:Ljava/lang/String;

    return-object v0
.end method
