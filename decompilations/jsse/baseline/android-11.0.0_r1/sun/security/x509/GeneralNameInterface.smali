.class public interface abstract Lsun/security/x509/GeneralNameInterface;
.super Ljava/lang/Object;
.source "GeneralNameInterface.java"


# static fields
.field public static final blacklist NAME_ANY:I = 0x0

.field public static final blacklist NAME_DIFF_TYPE:I = -0x1

.field public static final blacklist NAME_DIRECTORY:I = 0x4

.field public static final blacklist NAME_DNS:I = 0x2

.field public static final blacklist NAME_EDI:I = 0x5

.field public static final blacklist NAME_IP:I = 0x7

.field public static final blacklist NAME_MATCH:I = 0x0

.field public static final blacklist NAME_NARROWS:I = 0x1

.field public static final blacklist NAME_OID:I = 0x8

.field public static final blacklist NAME_RFC822:I = 0x1

.field public static final blacklist NAME_SAME_TYPE:I = 0x3

.field public static final blacklist NAME_URI:I = 0x6

.field public static final blacklist NAME_WIDENS:I = 0x2

.field public static final blacklist NAME_X400:I = 0x3


# virtual methods
.method public abstract blacklist constrains(Lsun/security/x509/GeneralNameInterface;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract blacklist encode(Lsun/security/util/DerOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getType()I
.end method

.method public abstract blacklist subtreeDepth()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method
