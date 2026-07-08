import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { Layout, Menu } from 'antd';
import {
  BarChartOutlined,
  BankOutlined,
  FileTextOutlined,
  AnalyticsOutlined,
  HomeOutlined,
} from '@ant-design/icons';
import './App.css';

const { Header, Content, Footer, Sider } = Layout;

function App() {
  return (
    <Router>
      <Layout style={{ minHeight: '100vh' }}>
        <Header style={{ background: '#001529', color: 'white' }}>
          <div style={{ fontSize: '24px', fontWeight: 'bold' }}>
            <BankOutlined /> نظام الحسابات المتكامل
          </div>
        </Header>
        
        <Layout>
          <Sider width={200} theme="dark">
            <Menu theme="dark" mode="inline" defaultSelectedKeys={['dashboard']}>
              <Menu.Item key="dashboard" icon={<HomeOutlined />}>
                لوحة التحكم
              </Menu.Item>
              <Menu.Item key="accounts" icon={<BankOutlined />}>
                الحسابات
              </Menu.Item>
              <Menu.Item key="transactions" icon={<BarChartOutlined />}>
                العمليات
              </Menu.Item>
              <Menu.Item key="reports" icon={<FileTextOutlined />}>
                التقارير
              </Menu.Item>
              <Menu.Item key="analysis" icon={<AnalyticsOutlined />}>
                التحليل المالي
              </Menu.Item>
            </Menu>
          </Sider>

          <Layout style={{ padding: '24px' }}>
            <Content style={{ background: '#fff', padding: '24px', borderRadius: '4px' }}>
              <Routes>
                <Route path="/" element={<h1>مرحباً بك في نظام الحسابات</h1>} />
              </Routes>
            </Content>

            <Footer style={{ textAlign: 'center', marginTop: '24px' }}>
              نظام الحسابات المتكامل © 2026
            </Footer>
          </Layout>
        </Layout>
      </Layout>
    </Router>
  );
}

export default App;
