// Copyright (c) 2011-2014 The Bitcoin Core developers
// Copyright (c) 2017-2019 The Raven Core developers
// Copyright (c) 2022 The Apixcash Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef APIXCASH_QT_APIXCASHADDRESSVALIDATOR_H
#define APIXCASH_QT_APIXCASHADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class ApixcashAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit ApixcashAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Apixcash address widget validator, checks for a valid apixcash address.
 */
class ApixcashAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit ApixcashAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // APIXCASH_QT_APIXCASHADDRESSVALIDATOR_H
