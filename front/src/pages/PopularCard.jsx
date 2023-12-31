import React, { useEffect, useState } from "react";
import { Button, Form, Input, InputNumber, Tabs } from "antd";
import axios from "axios";
import CardInfo from "components/PopularCard/CardInfo";
import Benefit from "components/PopularCard/Benefit";

const PopularCard = () => {
  // 카테고리, 카테고리에 따른 카드 리스트
  const [cardList, setCardList] = useState([]);
  const [category, setCategory] = useState("쇼핑");
  // 혜택 리스트
  const [benefitList, setBenefitList] = useState([]);

  const [money, setMoney] = useState("");
  const categoryList = ["쇼핑", "식비", "교통", "관광", "숙박", "항공"];

  // 인기 카드 3개 가져오기: category가 변경될 때마다 실행
  useEffect(() => {
    console.log(category);
    axios
      .post("/card/topcard", { category })
      .then((res) => {
        const allData = res.data;
        setCardList(allData.map((oneData) => oneData));
      })
      .catch((err) => console.log("error", err));
  }, [category]);

  // 카테고리 선택하면 setCategory, 혜택 초기화
  const selectCategory = (item) => {
    console.log(item);
    // setCategory(item.key);
    setCategory(item);
    setBenefitList([]);
  };

  // 금액 입력값 변경
  const onInputChange = (event) => {
    console.log(event.target.value);
    const inputMoney = event.target.value
      .toString()
      .replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    console.log(inputMoney);
    setMoney(inputMoney);
  };

  // 혜택 조회 버튼 눌렀을 때
  const benefits = (value) => {
    const price = value.cost;
    const cardNo = cardList.map((card) => card.cardNo);

    axios
      .post("/card/carddiscount", { price, cardNo, category })
      .then((res) => {
        setBenefitList(res.data.map((data) => data));
      })
      .catch((err) => console.log("error", err));
  };

  return (
    <div className="bigDiv" style={{ textAlign: "center" }}>
      {/* 금액 입력 form + button */}
      <div>
        <Form name="benefitForm" onFinish={benefits} autoComplete="off">
          <Form.Item
            // onChange={onInputChange}
            style={{ width: "350px", display: "inline-block" }}
            label="소비 금액(KRW)"
            name="cost"
            rules={[
              {
                required: true,
                message: "금액을 입력해주세요!",
              },
            ]}
          >
            <InputNumber
              style={{ width: "100%" }}
              prefix="₩"
              formatter={(value) =>
                `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ",")
              }
              // parser={(value) => value!.replace(/\$\s?|(,*)/g, '')}

              placeholder="금액을 입력해주세요"
              value={money}
            />
          </Form.Item>
          <Button htmlType="submit">혜택조회</Button>
        </Form>
      </div>

      {/* 카테고리 nav */}
      {/* https://github.com/ant-design/ant-design/blob/master/components/tabs/demo/centered.tsx */}
      <div>
        <Tabs
          defaultActiveKey={category}
          centered
          items={categoryList.map((data) => {
            return {
              label: data,
              key: data,
            };
          })}
          onChange={selectCategory}
        />
      </div>

      {/* 카드 리스트 */}
      <div>
        {cardList.map((data, i) => {
          return (
            <CardInfo
              image={data.cardPhoto}
              name={data.cardName}
              link={data.cardLink}
              key={i}
            />
          );
        })}
      </div>

      <div>
        {benefitList.map((data, i) => {
          return (
            <Benefit
              discount={data.discountAmount}
              payback={data.payback}
              point={data.point}
              annual={data.annual}
              total={data.totalDiscountAmount}
              key={i}
            />
          );
        })}
      </div>
    </div>
  );
};

export default PopularCard;
